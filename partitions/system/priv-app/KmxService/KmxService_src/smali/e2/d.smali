.class public final Le2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/String;

.field public final d:[Le2/c;


# direct methods
.method public constructor <init>(Le2/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Le2/e;->h:I

    iput v0, p0, Le2/d;->a:I

    iget v0, p1, Le2/e;->k:I

    iput v0, p0, Le2/d;->b:I

    iget-object v0, p1, Le2/e;->f:[Ljava/lang/String;

    iput-object v0, p0, Le2/d;->c:[Ljava/lang/String;

    iget-object p1, p1, Le2/e;->g:[Le2/c;

    iput-object p1, p0, Le2/d;->d:[Le2/c;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Le2/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le2/d;->a:I

    iput v0, p0, Le2/d;->b:I

    iput-object p1, p0, Le2/d;->c:[Ljava/lang/String;

    iput-object p2, p0, Le2/d;->d:[Le2/c;

    return-void
.end method
