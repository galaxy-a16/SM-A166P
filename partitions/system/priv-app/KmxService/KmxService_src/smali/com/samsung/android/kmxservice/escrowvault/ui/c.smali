.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/c;->a:I

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/c;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/c;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/c;->a:I

    iget-wide v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/c;->b:J

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->a(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;J)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->s(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
