.class public Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "ExtendedEthernetServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$1sGdcmbyJHVKsvUFgAFFE0RqGK0(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->lambda$interfaceAdded$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K0rljwhoknNFehf_3ipZ2gChdSo(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->lambda$interfaceRemoved$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r3UP6zQtx-OgcOH89Ljtz8fZs-Y(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->lambda$interfaceLinkStateChanged$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V

    return-void
.end method

.method private synthetic lambda$interfaceAdded$0(Ljava/lang/String;)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$monInterfaceAdded(Lcom/android/server/ExtendedEthernetServiceImpl;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$interfaceLinkStateChanged$2(Ljava/lang/String;Z)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$monInterfaceLinkStateChanged(Lcom/android/server/ExtendedEthernetServiceImpl;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$interfaceRemoved$1(Ljava/lang/String;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$monInterfaceRemoved(Lcom/android/server/ExtendedEthernetServiceImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceLinkStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
