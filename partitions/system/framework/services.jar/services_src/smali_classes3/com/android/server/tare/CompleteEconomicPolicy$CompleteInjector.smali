.class Lcom/android/server/tare/CompleteEconomicPolicy$CompleteInjector;
.super Lcom/android/server/tare/EconomicPolicy$Injector;
.source "CompleteEconomicPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/android/server/tare/EconomicPolicy$Injector;-><init>()V

    return-void
.end method


# virtual methods
.method public isPolicyEnabled(ILandroid/provider/DeviceConfig$Properties;)Z
    .locals 1

    const/high16 p0, 0x10000000

    if-eq p1, p0, :cond_1

    const/high16 p0, 0x20000000

    if-eq p1, p0, :cond_0

    .line 226
    invoke-static {}, Lcom/android/server/tare/CompleteEconomicPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown policy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "enable_policy_job"

    goto :goto_0

    :cond_1
    const-string p0, "enable_policy_alarm"

    :goto_0
    const/4 p1, 0x1

    if-nez p2, :cond_2

    return p1

    .line 232
    :cond_2
    invoke-virtual {p2, p0, p1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
