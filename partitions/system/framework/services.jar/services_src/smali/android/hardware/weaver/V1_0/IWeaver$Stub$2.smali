.class public Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;
.super Ljava/lang/Object;
.source "IWeaver.java"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field public final synthetic this$0:Landroid/hardware/weaver/V1_0/IWeaver$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/weaver/V1_0/IWeaver$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 671
    iput-object p1, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->this$0:Landroid/hardware/weaver/V1_0/IWeaver$Stub;

    iput-object p2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 2

    .line 674
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 676
    iget-object p1, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeToParcel(Landroid/os/HwParcel;)V

    .line 677
    iget-object p0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
