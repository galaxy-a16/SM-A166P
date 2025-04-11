.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/a0;->a:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/a0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/a0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/a0;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/a0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/a0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->X(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->d0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->h0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->H(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
