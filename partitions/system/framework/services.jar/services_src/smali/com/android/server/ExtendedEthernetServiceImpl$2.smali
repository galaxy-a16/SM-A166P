.class public Lcom/android/server/ExtendedEthernetServiceImpl$2;
.super Ljava/lang/Object;
.source "ExtendedEthernetServiceImpl.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onInterfaceStateChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", conf: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ExtendedEthernetServiceImpl"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p1, p3}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fputmInterfaceMode(Lcom/android/server/ExtendedEthernetServiceImpl;I)V

    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmInterfaceMode(Lcom/android/server/ExtendedEthernetServiceImpl;)I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    move p3, p4

    :cond_0
    invoke-static {p0, p3}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p0, p3}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V

    :goto_0
    return-void
.end method
