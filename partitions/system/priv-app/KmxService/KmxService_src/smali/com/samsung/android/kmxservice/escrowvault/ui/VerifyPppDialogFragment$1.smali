.class Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initDeviceList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

.field final synthetic val$deviceDataList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->val$deviceDataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "select device = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KMX|VerifyPppDialogFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->val$deviceDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->J(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVerifierType()I

    move-result p4

    invoke-static {p2, p4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->N(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->L(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->F(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->R(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->B(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->u(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)J

    move-result-wide p1

    const-wide/16 p4, -0x1

    cmp-long p1, p1, p4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->A(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/os/Bundle;

    move-result-object p2

    const-string p4, "failure_count"

    invoke-virtual {p2, p4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->K(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->A(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/os/Bundle;

    move-result-object p2

    const-string p4, "back_off_time"

    invoke-virtual {p2, p4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-static {p1, p4, p5}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->I(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->B(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I

    move-result p4

    const/16 p5, 0x14

    if-lt p4, p5, :cond_1

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showNotifyDeleteDialog()V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->B(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I

    move-result p5

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->u(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {p4, p5, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->Q(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;IJ)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1, p3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->M(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->z(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->x(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->setSelectedDeviceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->v(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1}, Lg4/n;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f09013f

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->F(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->D(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->P(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/widget/EditText;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->y(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/Spinner;

    move-result-object p0

    const p1, 0x7f0900b7

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "select device"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
