.class public Lcom/android/server/enterprise/email/EmailPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "EmailPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/EmailPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/EmailPolicy;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 471
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->-$$Nest$monUserRemoved(Lcom/android/server/enterprise/email/EmailPolicy;I)V

    :cond_0
    return-void
.end method
