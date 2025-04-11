.class Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initPinOrPasswordView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->v(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p0

    invoke-virtual {p0}, Lg4/n;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v0, 0x7f09013f

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->t(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initDetailMessage()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->H(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V

    :cond_0
    return-void
.end method
