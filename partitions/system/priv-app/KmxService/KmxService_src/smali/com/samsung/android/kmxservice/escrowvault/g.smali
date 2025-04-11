.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

.field public final synthetic e:Ljava/security/Key;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->a:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->d:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->e:Ljava/security/Key;

    iput-boolean p7, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->f:Z

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->g:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->d:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->e:Ljava/security/Key;

    iget-boolean v6, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->f:Z

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->g:Ljava/util/function/Consumer;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->c0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    return-void

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v9, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->d:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iget-object v10, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->e:Ljava/security/Key;

    iget-boolean v12, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->f:Z

    iget-object v11, p0, Lcom/samsung/android/kmxservice/escrowvault/g;->g:Ljava/util/function/Consumer;

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->e0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
