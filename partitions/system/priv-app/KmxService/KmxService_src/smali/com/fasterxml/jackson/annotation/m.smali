.class public final Lcom/fasterxml/jackson/annotation/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/fasterxml/jackson/annotation/m;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/annotation/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/m;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/m;->c:Lcom/fasterxml/jackson/annotation/m;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/annotation/m;->a:I

    iput p2, p0, Lcom/fasterxml/jackson/annotation/m;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/annotation/m;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/annotation/m;

    iget v2, p0, Lcom/fasterxml/jackson/annotation/m;->a:I

    iget v3, p1, Lcom/fasterxml/jackson/annotation/m;->a:I

    if-ne v3, v2, :cond_3

    iget p1, p1, Lcom/fasterxml/jackson/annotation/m;->b:I

    iget p0, p0, Lcom/fasterxml/jackson/annotation/m;->b:I

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/annotation/m;->b:I

    iget p0, p0, Lcom/fasterxml/jackson/annotation/m;->a:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/annotation/m;->c:Lcom/fasterxml/jackson/annotation/m;

    if-ne p0, v0, :cond_0

    const-string p0, "EMPTY"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/annotation/m;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/fasterxml/jackson/annotation/m;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "(enabled=0x%x,disabled=0x%x)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
