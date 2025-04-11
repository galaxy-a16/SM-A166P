.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"


# instance fields
.field public final btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final mContext:Landroid/content/Context;

.field public final masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

.field public final wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V
    .locals 1

    .line 895
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 897
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 934
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 976
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$3;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1002
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1028
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$5;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1056
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1081
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$7;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1110
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$8;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    return-void
.end method


# virtual methods
.method public registerAction()V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "PMS_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1139
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "GPS_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "Wifi_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1141
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "BlueTooth_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1142
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "Nearby_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "MasterSync_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1144
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "Notification_SleepModeAction"

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1145
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    const-string v1, "CF_Notification_SleepModeAction"

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-static {v0, v1, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    return-void
.end method
