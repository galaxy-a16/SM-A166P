.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/l;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/l;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/l;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/l;->c:I

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/l;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/l;->b:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method
