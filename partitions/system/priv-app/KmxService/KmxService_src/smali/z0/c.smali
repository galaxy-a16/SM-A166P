.class public final Lz0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz0/c;->a:I

    iput p2, p0, Lz0/c;->b:I

    iput-object p3, p0, Lz0/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lz0/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lz0/c;

    const-string v0, "other"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lz0/c;->a:I

    iget v1, p1, Lz0/c;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lz0/c;->b:I

    iget p1, p1, Lz0/c;->b:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method
