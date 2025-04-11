.class public Lcom/android/server/enterprise/geofencing/GeofenceService$2;
.super Landroid/content/BroadcastReceiver;
.source "GeofenceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p2

    const-string v0, "ADMIN"

    const-string v1, "adminUid"

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mdeleteGeofenceActiveListByAdmin(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
