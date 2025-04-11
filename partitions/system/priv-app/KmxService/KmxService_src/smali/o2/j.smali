.class public final Lo2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Lcom/google/android/datatransport/Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lo2/j;->b:[B

    iput-object p3, p0, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    return-void
.end method

.method public static a()Lp1/v;
    .locals 2

    new-instance v0, Lp1/v;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lp1/v;-><init>(I)V

    sget-object v1, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-virtual {v0, v1}, Lp1/v;->o(Lcom/google/android/datatransport/Priority;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo2/j;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lo2/j;->b:[B

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v0, v1

    const-string p0, "TransportContext(%s, %s, %s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo2/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lo2/j;

    iget-object v1, p1, Lo2/j;->a:Ljava/lang/String;

    iget-object v3, p0, Lo2/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo2/j;->b:[B

    iget-object v3, p1, Lo2/j;->b:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    iget-object p1, p1, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lo2/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lo2/j;->b:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lo2/j;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
