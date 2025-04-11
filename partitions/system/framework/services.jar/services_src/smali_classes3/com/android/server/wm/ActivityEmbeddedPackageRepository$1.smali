.class public Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityEmbeddedPackageRepository.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 112
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    :cond_1
    if-nez v5, :cond_2

    return-void

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p2, v5}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->allowSystemOverride(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_5

    .line 120
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-static {p2}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->-$$Nest$fgetmAtm(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p2, v5, v6, p1, v2}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(Ljava/lang/String;IIZ)V

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->add(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    .line 124
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 125
    invoke-virtual {p2, v5}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->remove(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-static {p0}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->-$$Nest$fgetmAtm(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v5, v2, p1, v6}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(Ljava/lang/String;IIZ)V

    :cond_5
    :goto_0
    return-void
.end method
