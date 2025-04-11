.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;
.super Landroid/os/Handler;
.source "DualDARComnService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 159
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mhandleAgentStated(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 163
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$fgetmBindingChecker(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->scheduleChecker(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 155
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->handleAgentDied(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    :goto_0
    return-void
.end method
