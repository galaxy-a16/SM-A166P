.class public final Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PredownloadFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.action_exempt_for_pre_download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "uid"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "exempt"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->-$$Nest$msetTempExempt(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerPredownloadRequestReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.action_exempt_for_pre_download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-static {v1}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->-$$Nest$fgetmContext(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
