.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/security/Key;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->c:Ljava/security/Key;

    iput-boolean p4, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->d:Z

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->e:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->c:Ljava/security/Key;

    iget-boolean v5, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->d:Z

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/u;->e:Ljava/util/function/Consumer;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->b0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    return-void
.end method
