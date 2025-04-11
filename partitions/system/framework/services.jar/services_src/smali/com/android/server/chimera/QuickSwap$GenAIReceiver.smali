.class public Lcom/android/server/chimera/QuickSwap$GenAIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickSwap.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/QuickSwap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/QuickSwap;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap$GenAIReceiver;->this$0:Lcom/android/server/chimera/QuickSwap;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.GEN_AI_RECLAIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/chimera/QuickSwap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/QuickSwap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/android/server/chimera/SystemRepository;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.GEN_AI_RECLAIM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap$GenAIReceiver;->this$0:Lcom/android/server/chimera/QuickSwap;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/QuickSwap;->tryQuickSwap(I)Z

    :cond_0
    return-void
.end method
