.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->c:I

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->c:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->d:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/o;->b:Ljava/lang/String;

    invoke-static {v2, p0, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->A(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method
