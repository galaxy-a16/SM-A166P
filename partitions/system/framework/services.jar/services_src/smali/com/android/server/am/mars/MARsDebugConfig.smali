.class public abstract Lcom/android/server/am/mars/MARsDebugConfig;
.super Ljava/lang/Object;
.source "MARsDebugConfig.java"


# static fields
.field public static final DEBUG_ALL:Z

.field public static DEBUG_DATABASE:Z

.field public static DEBUG_ENG:Z

.field public static DEBUG_FILTER:Z

.field public static DEBUG_FREECESS:Z

.field public static DEBUG_HIGH:Z

.field public static DEBUG_MARs:Z

.field public static DEBUG_MID:Z

.field public static DEBUG_NETLINK:Z

.field public static DEBUG_OLAF:Z

.field public static ENABLE_ALARM_WAKEUP_BLOCK:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x494d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    const-string/jumbo v1, "ro.build.type"

    const-string/jumbo v2, "user"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    return-void
.end method
