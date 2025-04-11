.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/j;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    check-cast v2, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    invoke-static {p0, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->g0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;Ljava/lang/String;)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->b(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
