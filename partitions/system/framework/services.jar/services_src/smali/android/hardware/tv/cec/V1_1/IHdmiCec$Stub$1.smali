.class public Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;
.super Ljava/lang/Object;
.source "IHdmiCec.java"

# interfaces
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# instance fields
.field public final synthetic this$0:Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 853
    iput-object p1, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;->this$0:Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;

    iput-object p2, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(IS)V
    .locals 2

    .line 856
    iget-object v0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 857
    iget-object v0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 858
    iget-object p1, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 859
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
