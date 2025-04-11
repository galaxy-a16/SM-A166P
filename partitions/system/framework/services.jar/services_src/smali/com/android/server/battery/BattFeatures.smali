.class public abstract Lcom/android/server/battery/BattFeatures;
.super Ljava/lang/Object;
.source "BattFeatures.java"


# static fields
.field public static final SUPPORT_ECO_BATTERY:Z

.field public static final TAG:Ljava/lang/String; = "BattFeatures"

.field public static cachedData:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY_FEATURE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    return-void
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .locals 3

    .line 29
    invoke-static {}, Lcom/android/server/battery/BattFeatures;->readSupportNode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/android/server/battery/BattFeatures;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") = true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static readSupportNode()Ljava/lang/String;
    .locals 3

    .line 20
    sget-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/sys/class/power_supply/battery/support_functions"

    .line 21
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/battery/BattFeatures;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachedData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    return-object v0
.end method
