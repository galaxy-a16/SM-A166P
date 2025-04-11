.class public Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;
.super Ljava/lang/Object;
.source "Vcn.java"

# interfaces
.implements Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;


# instance fields
.field public final mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p2, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-void
.end method


# virtual methods
.method public onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-static {p0}, Lcom/android/server/vcn/Vcn;->-$$Nest$fgetmVcnCallback(Lcom/android/server/vcn/Vcn;)Lcom/android/server/VcnManagementService$VcnCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/VcnManagementService$VcnCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQuit()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSafeModeStatusChanged()V
    .locals 1

    .line 701
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
