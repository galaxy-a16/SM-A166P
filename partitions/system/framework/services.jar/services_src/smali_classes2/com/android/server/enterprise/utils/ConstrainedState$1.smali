.class public Lcom/android/server/enterprise/utils/ConstrainedState$1;
.super Landroid/content/BroadcastReceiver;
.source "ConstrainedState.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/utils/ConstrainedState;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState$1;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p0, p0, Lcom/android/server/enterprise/utils/ConstrainedState$1;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->-$$Nest$mupdateNotification(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    :cond_0
    return-void
.end method
