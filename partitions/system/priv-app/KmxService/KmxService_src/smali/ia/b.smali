.class public final Lia/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lia/a;

.field public final b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;


# direct methods
.method public constructor <init>(Lia/a;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lia/b;->a:Lia/a;

    iput-object p2, p0, Lia/b;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "seal is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "chainedBlocks is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
