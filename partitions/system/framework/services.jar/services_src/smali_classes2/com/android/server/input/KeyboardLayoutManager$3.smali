.class public Lcom/android/server/input/KeyboardLayoutManager$3;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"

# interfaces
.implements Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;


# instance fields
.field public mDeviceSpecificLayoutAvailable:Z

.field public final synthetic this$0:Lcom/android/server/input/KeyboardLayoutManager;

.field public final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field public final synthetic val$imeLanguageTag:Ljava/lang/String;

.field public final synthetic val$potentialLayouts:Ljava/util/ArrayList;

.field public final synthetic val$userSelectedLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLayoutManager;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->this$0:Lcom/android/server/input/KeyboardLayoutManager;

    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$imeLanguageTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$userSelectedLayout:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 967
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 968
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 969
    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 970
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    .line 971
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 973
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$imeLanguageTag:Ljava/lang/String;

    .line 975
    invoke-static {p3, p1}, Lcom/android/server/input/KeyboardLayoutManager;->-$$Nest$smisLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 977
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 978
    :cond_2
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$userSelectedLayout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 979
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
