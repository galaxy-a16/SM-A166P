.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/h;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/h;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/h;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/h;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/h;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-static {v1, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-static {v1, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void

    :goto_0
    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-static {v1, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->M(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
