.class public abstract Le1/i;
.super Le1/h;
.source "SourceFile"


# instance fields
.field public a:[Lw/f;

.field public b:Ljava/lang/String;

.field public c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le1/h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le1/i;->a:[Lw/f;

    const/4 v0, 0x0

    iput v0, p0, Le1/i;->c:I

    return-void
.end method

.method public constructor <init>(Le1/i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Le1/h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le1/i;->a:[Lw/f;

    const/4 v0, 0x0

    iput v0, p0, Le1/i;->c:I

    iget-object v0, p1, Le1/i;->b:Ljava/lang/String;

    iput-object v0, p0, Le1/i;->b:Ljava/lang/String;

    iget v0, p1, Le1/i;->d:I

    iput v0, p0, Le1/i;->d:I

    iget-object p1, p1, Le1/i;->a:[Lw/f;

    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/i0;->o([Lw/f;)[Lw/f;

    move-result-object p1

    iput-object p1, p0, Le1/i;->a:[Lw/f;

    return-void
.end method


# virtual methods
.method public getPathData()[Lw/f;
    .locals 0

    iget-object p0, p0, Le1/i;->a:[Lw/f;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le1/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setPathData([Lw/f;)V
    .locals 5

    iget-object v0, p0, Le1/i;->a:[Lw/f;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/annotation/i0;->d([Lw/f;[Lw/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/i0;->o([Lw/f;)[Lw/f;

    move-result-object p1

    iput-object p1, p0, Le1/i;->a:[Lw/f;

    goto :goto_2

    :cond_0
    iget-object p0, p0, Le1/i;->a:[Lw/f;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    iget-char v3, v3, Lw/f;->a:C

    iput-char v3, v2, Lw/f;->a:C

    move v2, v0

    :goto_1
    aget-object v3, p1, v1

    iget-object v3, v3, Lw/f;->b:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, p0, v1

    iget-object v4, v4, Lw/f;->b:[F

    aget v3, v3, v2

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
