.class public Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "AbstractPreconditionObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[HWRS_SYS]PreconditionObserver"

    const-string p2, "mAccountChangeReceiver.onReceive - LOGIN_ACCOUNTS_CHANGED_ACTION"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;

    invoke-static {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->-$$Nest$mhandleSamsungAccountUpdate(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)V

    :cond_0
    return-void
.end method
