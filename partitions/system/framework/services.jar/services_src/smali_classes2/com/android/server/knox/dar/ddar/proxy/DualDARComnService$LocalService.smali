.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;
.source "DualDARComnService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V

    return-void
.end method


# virtual methods
.method public ensureProxyAgentBindingIfRequired(Ljava/lang/String;)V
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->ensureProxyAgentBindingIfRequired(Ljava/lang/String;)V

    return-void
.end method
