.class public Lcom/android/server/net/UrspService$1;
.super Landroid/content/BroadcastReceiver;
.source "UrspService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/UrspService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/net/UrspService$1;->this$0:Lcom/android/server/net/UrspService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    .line 106
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "received unexpected intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UrspService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/UrspService$1;->this$0:Lcom/android/server/net/UrspService;

    invoke-static {p0, p1}, Lcom/android/server/net/UrspService;->-$$Nest$monUidRemoved(Lcom/android/server/net/UrspService;I)V

    :cond_3
    :goto_0
    return-void
.end method
