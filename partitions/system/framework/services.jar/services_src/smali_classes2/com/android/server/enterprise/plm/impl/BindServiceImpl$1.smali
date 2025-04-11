.class public Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;
.super Ljava/lang/Object;
.source "BindServiceImpl.java"

# interfaces
.implements Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmAliveEvent(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmDeathEvent(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
