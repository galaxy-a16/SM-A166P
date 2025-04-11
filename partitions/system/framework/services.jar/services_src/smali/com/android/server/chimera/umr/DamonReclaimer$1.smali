.class public abstract synthetic Lcom/android/server/chimera/umr/DamonReclaimer$1;
.super Ljava/lang/Object;
.source "DamonReclaimer.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$chimera$umr$DamonReclaimer$DamonTuneable:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->values()[Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$1;->$SwitchMap$com$android$server$chimera$umr$DamonReclaimer$DamonTuneable:[I

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->enabled:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
