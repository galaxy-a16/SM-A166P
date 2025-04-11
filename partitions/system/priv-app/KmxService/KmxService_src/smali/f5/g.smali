.class public final Lf5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/f;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lc5/b;

.field public final d:Lf5/f;


# direct methods
.method public constructor <init>(Lf5/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf5/g;->a:Z

    iput-boolean v0, p0, Lf5/g;->b:Z

    iput-object p1, p0, Lf5/g;->d:Lf5/f;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lc5/f;
    .locals 3

    iget-boolean v0, p0, Lf5/g;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf5/g;->a:Z

    iget-object v0, p0, Lf5/g;->c:Lc5/b;

    iget-boolean v1, p0, Lf5/g;->b:Z

    iget-object v2, p0, Lf5/g;->d:Lf5/f;

    invoke-virtual {v2, v0, p1, v1}, Lf5/f;->d(Lc5/b;Ljava/lang/Object;Z)Lf5/f;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Z)Lc5/f;
    .locals 3

    iget-boolean v0, p0, Lf5/g;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf5/g;->a:Z

    iget-object v0, p0, Lf5/g;->c:Lc5/b;

    iget-boolean v1, p0, Lf5/g;->b:Z

    iget-object v2, p0, Lf5/g;->d:Lf5/f;

    invoke-virtual {v2, v0, p1, v1}, Lf5/f;->e(Lc5/b;IZ)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
