.class Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;
.super Ljava/lang/Object;
.source "DeviceStateNotificationController.java"


# instance fields
.field public final activeNotificationContent:Ljava/lang/String;

.field public final activeNotificationTitle:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final powerSaveModeNotificationContent:Ljava/lang/String;

.field public final powerSaveModeNotificationTitle:Ljava/lang/String;

.field public final thermalCriticalNotificationContent:Ljava/lang/String;

.field public final thermalCriticalNotificationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 391
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    .line 392
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationContent:Ljava/lang/String;

    .line 393
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    .line 394
    iput-object p5, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationContent:Ljava/lang/String;

    .line 395
    iput-object p6, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    .line 396
    iput-object p7, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasActiveNotification()Z
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPowerSaveModeNotification()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasThermalCriticalNotification()Z
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
