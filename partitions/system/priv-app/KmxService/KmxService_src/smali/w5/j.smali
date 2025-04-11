.class public final Lw5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/a;


# static fields
.field public static final e:Lw5/j;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:I

.field public final d:Leb/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw5/j;

    const/4 v1, 0x0

    sget-object v2, Lw7/a;->a:Leb/s;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lw5/j;-><init>(Ljava/util/concurrent/Executor;ILeb/s;)V

    sput-object v0, Lw5/j;->e:Lw5/j;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILeb/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/j;->b:Ljava/util/concurrent/Executor;

    iput p2, p0, Lw5/j;->c:I

    iput-object p3, p0, Lw5/j;->d:Leb/s;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw5/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw5/j;

    iget-object v1, p1, Lw5/j;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lw5/j;->b:Ljava/util/concurrent/Executor;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lw5/j;->c:I

    iget v3, p1, Lw5/j;->c:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lw5/j;->d:Leb/s;

    iget-object p1, p1, Lw5/j;->d:Leb/s;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lw5/j;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lw5/j;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lw5/j;->d:Leb/s;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
