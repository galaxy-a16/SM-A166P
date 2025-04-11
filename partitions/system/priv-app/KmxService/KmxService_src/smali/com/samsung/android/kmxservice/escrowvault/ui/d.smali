.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/d;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/d;->b:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/d;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/d;->b:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->p(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/view/View;)V

    return-void

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->n(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
