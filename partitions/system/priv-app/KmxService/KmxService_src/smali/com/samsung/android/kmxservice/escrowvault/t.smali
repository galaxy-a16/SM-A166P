.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->d:Ljava/util/function/Consumer;

    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/t;->c:Landroid/os/Bundle;

    invoke-static {v1, v2, p0, v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->V(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method
