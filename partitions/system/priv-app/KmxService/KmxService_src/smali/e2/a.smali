.class public final Le2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I

.field public final e:[Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(II[I[Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le2/a;->a:I

    const/4 p1, 0x0

    iput p1, p0, Le2/a;->b:I

    iput p2, p0, Le2/a;->c:I

    iput-object p3, p0, Le2/a;->d:[I

    iput-object p4, p0, Le2/a;->e:[Ljava/lang/String;

    iput p5, p0, Le2/a;->f:I

    iput p6, p0, Le2/a;->g:I

    return-void
.end method

.method public constructor <init>(Le2/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Le2/b;->g:I

    iput v0, p0, Le2/a;->a:I

    iget v0, p1, Le2/b;->k:I

    iput v0, p0, Le2/a;->b:I

    iget v0, p1, Le2/b;->j:I

    iput v0, p0, Le2/a;->c:I

    iget-object v0, p1, Le2/b;->f:[I

    iput-object v0, p0, Le2/a;->d:[I

    iget-object v0, p1, Le2/b;->l:[Ljava/lang/String;

    iput-object v0, p0, Le2/a;->e:[Ljava/lang/String;

    iget v0, p1, Le2/b;->m:I

    iput v0, p0, Le2/a;->f:I

    iget p1, p1, Le2/b;->n:I

    iput p1, p0, Le2/a;->g:I

    return-void
.end method
