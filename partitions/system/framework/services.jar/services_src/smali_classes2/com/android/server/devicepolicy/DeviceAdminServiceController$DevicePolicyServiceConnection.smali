.class public Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "DeviceAdminServiceController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DeviceAdminServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V
    .locals 14

    move-object v0, p1

    move-object v1, p0

    .line 59
    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->this$0:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    const-string v2, "DevicePolicyManager"

    .line 60
    iget-object v3, v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-$$Nest$fgetmHandler(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-$$Nest$fgetmConstants(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-$$Nest$fgetmConstants(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v5

    iget-wide v8, v5, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-$$Nest$fgetmConstants(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v5

    iget-wide v10, v5, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->-$$Nest$fgetmConstants(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v0

    iget-wide v12, v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;
    .locals 0

    .line 74
    invoke-static {p1}, Landroid/app/admin/IDeviceAdminService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    move-result-object p0

    return-object p0
.end method

.method public getBindFlags()I
    .locals 0

    .line 0
    const/high16 p0, 0x4000000

    return p0
.end method
