.class public abstract Landroidx/profileinstaller/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:Lh5/d;

.field public static final d:Ll4/e;

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/profileinstaller/i;->a:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/profileinstaller/i;->b:[B

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Landroidx/profileinstaller/i;->c:Lh5/d;

    new-instance v0, Ll4/e;

    invoke-direct {v0}, Ll4/e;-><init>()V

    sput-object v0, Landroidx/profileinstaller/i;->d:Ll4/e;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/profileinstaller/i;->e:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Landroidx/profileinstaller/i;->f:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Landroidx/profileinstaller/i;->g:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Landroidx/profileinstaller/i;->h:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Landroidx/profileinstaller/i;->i:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_7

    sput-object v1, Landroidx/profileinstaller/i;->j:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Landroidx/profileinstaller/i;->k:[B

    return-void

    :array_0
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public static a([Landroidx/profileinstaller/c;[B)[B
    .locals 9

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    iget-object v5, v4, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v6, v4, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v5, v6, p1}, Landroidx/profileinstaller/i;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x10

    iget v6, v4, Landroidx/profileinstaller/c;->e:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v5, v4, Landroidx/profileinstaller/c;->f:I

    add-int/2addr v6, v5

    iget v4, v4, Landroidx/profileinstaller/c;->g:I

    const/4 v5, 0x2

    const/16 v7, 0x8

    const/4 v8, -0x1

    invoke-static {v4, v5, v7, v8}, Landroidx/activity/b;->B(IIII)I

    move-result v4

    and-int/lit8 v4, v4, -0x8

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v2, Landroidx/profileinstaller/i;->g:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, p0, v1

    iget-object v5, v4, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v6, v4, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v5, v6, p1}, Landroidx/profileinstaller/i;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroidx/profileinstaller/i;->m(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroidx/profileinstaller/i;->o(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    invoke-static {v0, v4}, Landroidx/profileinstaller/i;->l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    invoke-static {v0, v4}, Landroidx/profileinstaller/i;->n(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v2, p0

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    iget-object v6, v5, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v7, v5, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v6, v7, p1}, Landroidx/profileinstaller/i;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Landroidx/profileinstaller/i;->m(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    array-length p1, p0

    :goto_3
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    invoke-static {v0, v2}, Landroidx/profileinstaller/i;->o(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    invoke-static {v0, v2}, Landroidx/profileinstaller/i;->l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    invoke-static {v0, v2}, Landroidx/profileinstaller/i;->n(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-ne p0, v3, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "The bytes saved do not match expectation. actual="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    sget-object v0, Landroidx/profileinstaller/i;->i:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    sget-object v2, Landroidx/profileinstaller/i;->h:[B

    const-string v3, "!"

    const-string v4, ":"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object p0, p1

    :goto_2
    return-object p0

    :cond_4
    const-string v5, "classes.dex"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p1

    :cond_7
    invoke-static {p0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_3
    move-object v3, v4

    :cond_9
    invoke-static {p0, v3, p1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    move-object p0, p1

    :goto_5
    return-object p0
.end method

.method public static c(III)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    add-int/2addr p1, p2

    return p1

    :cond_0
    const-string p1, "Unexpected flag: "

    invoke-static {p1, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HOT methods are not stored in the bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public static e(ILjava/io/ByteArrayInputStream;)[I
    .locals 4

    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static f(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;
    .locals 5

    sget-object v0, Landroidx/profileinstaller/i;->j:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v2, "Content found after the end of file"

    const/4 v3, 0x4

    const-string v4, "Unsupported meta version"

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/profileinstaller/i;->e:[B

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {v3, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v3, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v3

    long-to-int p2, v3

    long-to-int v0, v0

    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/a0;->E(Ljava/io/FileInputStream;II)[B

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {p0, p1, p3}, Landroidx/profileinstaller/i;->g(Ljava/io/ByteArrayInputStream;I[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v0, Landroidx/profileinstaller/i;->k:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result p1

    invoke-static {v3, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v3, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v3

    long-to-int v3, v3

    long-to-int v0, v0

    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/a0;->E(Ljava/io/FileInputStream;II)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_4

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_2
    invoke-static {p0, p2, p1, p3}, Landroidx/profileinstaller/i;->h(Ljava/io/ByteArrayInputStream;[BI[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_2
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;I[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;
    .locals 7

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroidx/profileinstaller/c;

    return-object p0

    :cond_0
    array-length v0, p2

    if-ne p1, v0, :cond_4

    new-array v0, p1, [Ljava/lang/String;

    new-array v2, p1, [I

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-static {p0}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {p0}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v5

    aput v5, v2, v3

    new-instance v5, Ljava/lang/String;

    invoke-static {v4, p0}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    aget-object v3, p2, v1

    iget-object v4, v3, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget v4, v2, v1

    iput v4, v3, Landroidx/profileinstaller/c;->e:I

    invoke-static {v4, p0}, Landroidx/profileinstaller/i;->e(ILjava/io/ByteArrayInputStream;)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/profileinstaller/c;->h:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Order of dexfiles in metadata did not match baseline"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched number of dex files found in metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/io/ByteArrayInputStream;[BI[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;
    .locals 9

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroidx/profileinstaller/c;

    return-object p0

    :cond_0
    array-length v0, p3

    if-ne p2, v0, :cond_9

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_8

    invoke-static {p0}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    invoke-static {p0}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    invoke-static {v2, p0}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x4

    invoke-static {v2, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v4

    invoke-static {p0}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v2

    array-length v6, p3

    if-gtz v6, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :cond_2
    if-lez v6, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    move v7, v1

    :goto_2
    array-length v8, p3

    if-ge v7, v8, :cond_5

    aget-object v8, p3, v7

    iget-object v8, v8, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v6, p3, v7

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_7

    iput-wide v4, v6, Landroidx/profileinstaller/c;->d:J

    invoke-static {v2, p0}, Landroidx/profileinstaller/i;->e(ILjava/io/ByteArrayInputStream;)[I

    move-result-object v3

    sget-object v4, Landroidx/profileinstaller/i;->i:[B

    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v2, v6, Landroidx/profileinstaller/c;->e:I

    iput-object v3, v6, Landroidx/profileinstaller/c;->h:[I

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const-string p0, "Missing profile key: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object p3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched number of dex files found in metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/c;
    .locals 5

    sget-object v0, Landroidx/profileinstaller/i;->f:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v1

    invoke-static {v0, p0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v3

    long-to-int v0, v3

    long-to-int v1, v1

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/a0;->E(Ljava/io/FileInputStream;II)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {p2, p0, p1}, Landroidx/profileinstaller/i;->j(Ljava/lang/String;Ljava/io/ByteArrayInputStream;I)[Landroidx/profileinstaller/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content found after the end of file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;Ljava/io/ByteArrayInputStream;I)[Landroidx/profileinstaller/c;
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v0, v3, [Landroidx/profileinstaller/c;

    return-object v0

    :cond_0
    new-array v2, v1, [Landroidx/profileinstaller/c;

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v1, :cond_1

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v12

    invoke-static {v5, v0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v7

    invoke-static {v5, v0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v10

    invoke-static {v5, v0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v13

    new-instance v5, Landroidx/profileinstaller/c;

    new-instance v9, Ljava/lang/String;

    invoke-static {v6, v0}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v6

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v6, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    long-to-int v6, v7

    long-to-int v14, v13

    new-array v15, v12, [I

    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    move-object v7, v5

    move-object/from16 v8, p0

    move v13, v6

    invoke-direct/range {v7 .. v16}, Landroidx/profileinstaller/c;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_e

    aget-object v6, v2, v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v7

    iget v8, v6, Landroidx/profileinstaller/c;->f:I

    sub-int/2addr v7, v8

    move v8, v3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v9

    iget-object v10, v6, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    if-le v9, v7, :cond_7

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    move-result v9

    :goto_2
    if-lez v9, :cond_2

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    invoke-static {v11, v0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v12

    long-to-int v10, v12

    const/4 v12, 0x6

    if-ne v10, v12, :cond_3

    goto :goto_5

    :cond_3
    const/4 v12, 0x7

    if-ne v10, v12, :cond_4

    goto :goto_5

    :cond_4
    :goto_3
    if-lez v10, :cond_6

    invoke-static {v11, v0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    invoke-static {v11, v0}, Lkotlinx/coroutines/a0;->J(ILjava/io/InputStream;)J

    move-result-wide v12

    long-to-int v12, v12

    :goto_4
    if-lez v12, :cond_5

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/a0;->K(Ljava/io/InputStream;)I

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v8

    if-ne v8, v7, :cond_d

    iget v7, v6, Landroidx/profileinstaller/c;->e:I

    invoke-static {v7, v0}, Landroidx/profileinstaller/i;->e(ILjava/io/ByteArrayInputStream;)[I

    move-result-object v7

    iput-object v7, v6, Landroidx/profileinstaller/c;->h:[I

    iget v6, v6, Landroidx/profileinstaller/c;->g:I

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroidx/activity/b;->B(IIII)I

    move-result v7

    and-int/lit8 v7, v7, -0x8

    div-int/lit8 v7, v7, 0x8

    invoke-static {v7, v0}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v7

    move v8, v3

    :goto_6
    if-ge v8, v6, :cond_c

    const/4 v9, 0x2

    invoke-static {v9, v8, v6}, Landroidx/profileinstaller/i;->c(III)I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    move v9, v3

    :goto_7
    invoke-static {v5, v8, v6}, Landroidx/profileinstaller/i;->c(III)I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_9

    or-int/lit8 v9, v9, 0x4

    :cond_9
    if-eqz v9, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    or-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read too much data during profile line parse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-object v2
.end method

.method public static k(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/c;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroidx/profileinstaller/i;->e:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    array-length v9, v2

    invoke-static {v4, v9}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v9, 0x2

    move v10, v6

    move v11, v9

    :goto_0
    array-length v12, v2

    if-ge v10, v12, :cond_0

    aget-object v12, v2, v10

    add-int/lit8 v11, v11, 0x4

    iget-wide v13, v12, Landroidx/profileinstaller/c;->c:J

    invoke-static {v4, v5, v13, v14}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    add-int/2addr v11, v5

    iget-wide v13, v12, Landroidx/profileinstaller/c;->d:J

    invoke-static {v4, v5, v13, v14}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    add-int/2addr v11, v5

    iget v13, v12, Landroidx/profileinstaller/c;->g:I

    int-to-long v13, v13

    invoke-static {v4, v5, v13, v14}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    iget-object v13, v12, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v12, v12, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v13, v12, v3}, Landroidx/profileinstaller/i;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v11, v9

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v4, v13}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    mul-int/lit8 v13, v13, 0x1

    add-int/2addr v11, v13

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v10, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-string v12, ", does not match actual size "

    const-string v13, "Expected size "

    if-ne v11, v10, :cond_9

    :try_start_1
    new-instance v10, Landroidx/profileinstaller/m;

    sget-object v11, Landroidx/profileinstaller/FileSectionType;->DEX_FILES:Landroidx/profileinstaller/FileSectionType;

    invoke-direct {v10, v11, v3, v6}, Landroidx/profileinstaller/m;-><init>(Landroidx/profileinstaller/FileSectionType;[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v6

    move v10, v4

    :goto_1
    :try_start_2
    array-length v11, v2

    if-ge v4, v11, :cond_1

    aget-object v11, v2, v4

    add-int/lit8 v10, v10, 0x2

    invoke-static {v3, v4}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    add-int/2addr v10, v9

    iget v14, v11, Landroidx/profileinstaller/c;->e:I

    invoke-static {v3, v14}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget v14, v11, Landroidx/profileinstaller/c;->e:I

    mul-int/2addr v14, v9

    add-int/2addr v10, v14

    invoke-static {v3, v11}, Landroidx/profileinstaller/i;->l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v11, v4

    if-ne v10, v11, :cond_8

    new-instance v10, Landroidx/profileinstaller/m;

    sget-object v11, Landroidx/profileinstaller/FileSectionType;->CLASSES:Landroidx/profileinstaller/FileSectionType;

    invoke-direct {v10, v11, v4, v7}, Landroidx/profileinstaller/m;-><init>(Landroidx/profileinstaller/FileSectionType;[BZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v6

    move v10, v4

    :goto_2
    :try_start_3
    array-length v11, v2

    if-ge v4, v11, :cond_3

    aget-object v11, v2, v4

    iget-object v14, v11, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v6

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    or-int v15, v15, v16

    goto :goto_3

    :cond_2
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v14, v11}, Landroidx/profileinstaller/i;->n(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {v14, v11}, Landroidx/profileinstaller/i;->o(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    add-int/lit8 v10, v10, 0x2

    invoke-static {v3, v4}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    array-length v14, v6

    add-int/2addr v14, v9

    array-length v9, v11

    add-int/2addr v14, v9

    add-int/2addr v10, v5

    move-object/from16 v17, v8

    int-to-long v7, v14

    invoke-static {v3, v5, v7, v8}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-static {v3, v15}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    add-int/2addr v10, v14

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v17

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_3
    move-object/from16 v17, v8

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    if-ne v10, v4, :cond_7

    new-instance v4, Landroidx/profileinstaller/m;

    sget-object v6, Landroidx/profileinstaller/FileSectionType;->METHODS:Landroidx/profileinstaller/FileSectionType;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v2, v7}, Landroidx/profileinstaller/m;-><init>(Landroidx/profileinstaller/FileSectionType;[BZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v2, v5

    add-long/2addr v2, v2

    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    int-to-long v6, v4

    add-long/2addr v2, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v0, v5, v6, v7}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/profileinstaller/m;

    iget-object v7, v6, Landroidx/profileinstaller/m;->a:Landroidx/profileinstaller/FileSectionType;

    invoke-virtual {v7}, Landroidx/profileinstaller/FileSectionType;->getValue()J

    move-result-wide v7

    invoke-static {v0, v5, v7, v8}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-static {v0, v5, v2, v3}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    iget-boolean v7, v6, Landroidx/profileinstaller/m;->c:Z

    iget-object v6, v6, Landroidx/profileinstaller/m;->b:[B

    if-eqz v7, :cond_4

    array-length v7, v6

    int-to-long v7, v7

    invoke-static {v6}, Lkotlinx/coroutines/a0;->d([B)[B

    move-result-object v6

    move-object/from16 v10, v17

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v11, v6

    int-to-long v11, v11

    invoke-static {v0, v5, v11, v12}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-static {v0, v5, v7, v8}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    array-length v6, v6

    goto :goto_7

    :cond_4
    move-object/from16 v10, v17

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v7, v6

    int-to-long v7, v7

    invoke-static {v0, v5, v7, v8}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    const-wide/16 v7, 0x0

    invoke-static {v0, v5, v7, v8}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    array-length v6, v6

    :goto_7
    int-to-long v6, v6

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v10

    goto :goto_6

    :cond_5
    move-object/from16 v10, v17

    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_6
    const/4 v1, 0x1

    return v1

    :cond_7
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1

    :cond_8
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1

    :cond_9
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    :try_start_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1

    :cond_a
    sget-object v3, Landroidx/profileinstaller/i;->f:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v2, v3}, Landroidx/profileinstaller/i;->a([Landroidx/profileinstaller/c;[B)[B

    move-result-object v1

    array-length v2, v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v5, v2, v3}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-static {v1}, Lkotlinx/coroutines/a0;->d([B)[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v5, v2, v3}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x1

    return v3

    :cond_b
    const/4 v3, 0x1

    sget-object v4, Landroidx/profileinstaller/i;->h:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_f

    array-length v1, v2

    int-to-long v6, v1

    invoke-static {v0, v3, v6, v7}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    array-length v1, v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_e

    aget-object v6, v2, v3

    iget-object v7, v6, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v7

    mul-int/2addr v7, v5

    iget-object v8, v6, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v10, v6, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v8, v10, v4}, Landroidx/profileinstaller/i;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v0, v10}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v10, v6, Landroidx/profileinstaller/c;->h:[I

    array-length v10, v10

    invoke-static {v0, v10}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    int-to-long v10, v7

    invoke-static {v0, v5, v10, v11}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    iget-wide v10, v6, Landroidx/profileinstaller/c;->c:J

    invoke-static {v0, v5, v10, v11}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, v6, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v8}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_d

    :cond_c
    iget-object v6, v6, Landroidx/profileinstaller/c;->h:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_d

    aget v10, v6, v8

    invoke-static {v0, v10}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_e
    const/4 v3, 0x1

    return v3

    :cond_f
    sget-object v4, Landroidx/profileinstaller/i;->g:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v2, v4}, Landroidx/profileinstaller/i;->a([Landroidx/profileinstaller/c;[B)[B

    move-result-object v1

    array-length v2, v2

    int-to-long v6, v2

    invoke-static {v0, v3, v6, v7}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v5, v2, v3}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-static {v1}, Lkotlinx/coroutines/a0;->d([B)[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v5, v2, v3}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    return v0

    :cond_10
    sget-object v3, Landroidx/profileinstaller/i;->i:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_14

    array-length v1, v2

    invoke-static {v0, v1}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    array-length v1, v2

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v1, :cond_13

    aget-object v4, v2, v8

    iget-object v6, v4, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v7, v4, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v6, v7, v3}, Landroidx/profileinstaller/i;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v0, v7}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v7, v4, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v10

    invoke-static {v0, v10}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v10, v4, Landroidx/profileinstaller/c;->h:[I

    array-length v10, v10

    invoke-static {v0, v10}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget-wide v10, v4, Landroidx/profileinstaller/c;->c:J

    invoke-static {v0, v5, v10, v11}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v7}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_10

    :cond_11
    iget-object v4, v4, Landroidx/profileinstaller/c;->h:[I

    array-length v6, v4

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_12

    aget v10, v4, v7

    invoke-static {v0, v10}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_13
    const/4 v4, 0x1

    return v4

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V
    .locals 5

    iget-object p1, p1, Landroidx/profileinstaller/c;->h:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {p0, v4}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget v0, p1, Landroidx/profileinstaller/c;->e:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    iget v0, p1, Landroidx/profileinstaller/c;->f:I

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-static {p0, v2, v0, v1}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    iget-wide v0, p1, Landroidx/profileinstaller/c;->c:J

    invoke-static {p0, v2, v0, v1}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    iget p1, p1, Landroidx/profileinstaller/c;->g:I

    int-to-long v0, p1

    invoke-static {p0, v2, v0, v1}, Lkotlinx/coroutines/a0;->Q(Ljava/io/ByteArrayOutputStream;IJ)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static n(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V
    .locals 10

    iget v0, p1, Landroidx/profileinstaller/c;->g:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroidx/activity/b;->B(IIII)I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v2, p1, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    iget v7, p1, Landroidx/profileinstaller/c;->g:I

    if-eqz v5, :cond_1

    invoke-static {v1, v4, v7}, Landroidx/profileinstaller/i;->c(III)I

    move-result v5

    div-int/lit8 v8, v5, 0x8

    aget-byte v9, v0, v8

    rem-int/lit8 v5, v5, 0x8

    shl-int v5, v6, v5

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    :cond_1
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-static {v3, v4, v7}, Landroidx/profileinstaller/i;->c(III)I

    move-result v3

    div-int/lit8 v4, v3, 0x8

    aget-byte v5, v0, v4

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v6, v3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static o(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V
    .locals 4

    iget-object p1, p1, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, v3, v1

    invoke-static {p0, v1}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->R(Ljava/io/ByteArrayOutputStream;I)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static p(Landroid/content/Context;Li/a;Landroidx/profileinstaller/d;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v0, Ljava/io/File;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v3, "ProfileInstaller"

    if-nez p3, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v4, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v0, v13, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    iget-wide v4, v12, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v16, v4

    if-nez v0, :cond_1

    move v0, v14

    goto :goto_0

    :cond_1
    move v0, v11

    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, 0x2

    invoke-interface {v8, v4, v15}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_2
    move v0, v11

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Skipping profile installation for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Installing profile for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v7, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/profiles/cur/0"

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "primary.prof"

    invoke-direct {v7, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Landroidx/profileinstaller/b;

    const-string v4, "dexopt/baseline.prof"

    move-object v2, v5

    move-object v3, v9

    move-object v11, v4

    move-object/from16 v4, p1

    move-object v10, v5

    move-object/from16 v5, p2

    move-object/from16 v18, v7

    invoke-direct/range {v2 .. v7}, Landroidx/profileinstaller/b;-><init>(Landroid/content/res/AssetManager;Li/a;Landroidx/profileinstaller/d;Ljava/lang/String;Ljava/io/File;)V

    const/4 v2, 0x4

    iget-object v3, v10, Landroidx/profileinstaller/b;->c:[B

    if-nez v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v10, v4, v0}, Landroidx/profileinstaller/b;->b(ILjava/io/Serializable;)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v10, v2, v15}, Landroidx/profileinstaller/b;->b(ILjava/io/Serializable;)V

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    iput-boolean v14, v10, Landroidx/profileinstaller/b;->f:Z

    move v0, v14

    :goto_6
    if-nez v0, :cond_7

    move v4, v14

    const/4 v5, 0x0

    goto/16 :goto_29

    :cond_7
    iget-boolean v0, v10, Landroidx/profileinstaller/b;->f:Z

    const-string v4, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    if-eqz v0, :cond_1a

    sget-object v5, Landroidx/profileinstaller/i;->a:[B

    const/16 v6, 0x8

    if-nez v3, :cond_8

    goto/16 :goto_18

    :cond_8
    :try_start_6
    invoke-virtual {v10, v9, v11}, Landroidx/profileinstaller/b;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v11, v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x7

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x6

    :goto_7
    invoke-interface {v8, v0, v11}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    move-object v11, v15

    :goto_8
    const-string v7, "Invalid magic"

    if-eqz v11, :cond_a

    :try_start_7
    invoke-static {v2, v11}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v2, v11}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v0

    iget-object v14, v10, Landroidx/profileinstaller/b;->e:Ljava/lang/String;

    invoke-static {v11, v0, v14}, Landroidx/profileinstaller/i;->i(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/c;

    move-result-object v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v11, v0

    const/4 v15, 0x7

    invoke-interface {v8, v15, v11}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_b

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_9
    move-object v1, v0

    goto :goto_f

    :goto_a
    :try_start_a
    invoke-interface {v8, v6, v0}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    const/4 v14, 0x7

    goto :goto_c

    :goto_b
    const/4 v14, 0x7

    invoke-interface {v8, v14, v0}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_c
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v11, v0

    invoke-interface {v8, v14, v11}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    :goto_d
    const/4 v14, 0x0

    :goto_e
    iput-object v14, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    goto :goto_11

    :goto_f
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x7

    invoke-interface {v8, v3, v2}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    :goto_10
    throw v1

    :cond_a
    :goto_11
    iget-object v0, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    if-eqz v0, :cond_10

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x21

    if-le v11, v14, :cond_b

    goto :goto_12

    :cond_b
    if-eq v11, v14, :cond_c

    :goto_12
    const/4 v11, 0x0

    goto :goto_13

    :cond_c
    const/4 v11, 0x1

    :goto_13
    if-eqz v11, :cond_10

    :try_start_d
    const-string v11, "dexopt/baseline.profm"

    invoke-virtual {v10, v9, v11}, Landroidx/profileinstaller/b;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_8

    if-eqz v9, :cond_e

    :try_start_e
    sget-object v11, Landroidx/profileinstaller/i;->b:[B

    invoke-static {v2, v9}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v14

    invoke-static {v11, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v2, v9}, Lkotlinx/coroutines/a0;->C(ILjava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v9, v2, v3, v0}, Landroidx/profileinstaller/i;->f(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;

    move-result-object v0

    iput-object v0, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_8

    move-object v0, v10

    goto :goto_17

    :cond_d
    :try_start_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_12
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v2

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    invoke-interface {v8, v6, v0}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    goto :goto_16

    :catch_9
    move-exception v0

    const/4 v2, 0x7

    goto :goto_15

    :catch_a
    move-exception v0

    const/16 v2, 0x9

    :goto_15
    invoke-interface {v8, v2, v0}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    :cond_f
    :goto_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_10

    move-object v10, v0

    :cond_10
    :goto_18
    iget-object v2, v10, Landroidx/profileinstaller/b;->b:Landroidx/profileinstaller/d;

    iget-object v0, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    if-eqz v0, :cond_14

    iget-object v3, v10, Landroidx/profileinstaller/b;->c:[B

    if-nez v3, :cond_11

    goto :goto_1c

    :cond_11
    iget-boolean v7, v10, Landroidx/profileinstaller/b;->f:Z

    if-eqz v7, :cond_13

    :try_start_13
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_b

    :try_start_14
    invoke-virtual {v7, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v7, v3, v0}, Landroidx/profileinstaller/i;->k(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/c;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    iput-object v3, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_1c

    :cond_12
    :try_start_16
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v10, Landroidx/profileinstaller/b;->h:[B
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_b

    goto :goto_1b

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_19

    :catchall_6
    move-exception v0

    move-object v5, v0

    :try_start_19
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_b

    :catch_b
    move-exception v0

    goto :goto_1a

    :catch_c
    move-exception v0

    const/4 v6, 0x7

    :goto_1a
    invoke-interface {v2, v6, v0}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    :goto_1b
    const/4 v2, 0x0

    iput-object v2, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    goto :goto_1c

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_1c
    iget-object v0, v10, Landroidx/profileinstaller/b;->h:[B

    if-nez v0, :cond_15

    const/4 v4, 0x1

    goto/16 :goto_27

    :cond_15
    iget-boolean v2, v10, Landroidx/profileinstaller/b;->f:Z

    if-eqz v2, :cond_19

    :try_start_1a
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, v10, Landroidx/profileinstaller/b;->d:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    const/16 v0, 0x200

    :try_start_1c
    new-array v0, v0, [B

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-lez v4, :cond_16

    const/4 v5, 0x0

    :try_start_1d
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto :goto_1d

    :catchall_7
    move-exception v0

    move-object v5, v0

    const/4 v4, 0x1

    goto :goto_1f

    :cond_16
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1e
    invoke-virtual {v10, v4, v5}, Landroidx/profileinstaller/b;->b(ILjava/io/Serializable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    iput-object v5, v10, Landroidx/profileinstaller/b;->h:[B

    iput-object v5, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    move v5, v4

    goto :goto_28

    :catchall_8
    move-exception v0

    goto :goto_21

    :catchall_9
    move-exception v0

    goto :goto_1e

    :catchall_a
    move-exception v0

    const/4 v4, 0x1

    :goto_1e
    move-object v5, v0

    :goto_1f
    :try_start_21
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    goto :goto_20

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_22
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    :catchall_c
    move-exception v0

    const/4 v4, 0x1

    :goto_21
    move-object v3, v0

    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    goto :goto_22

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_24
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v3
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_d
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    :catch_d
    move-exception v0

    goto :goto_23

    :catch_e
    move-exception v0

    goto :goto_25

    :catchall_e
    move-exception v0

    goto :goto_2b

    :catch_f
    move-exception v0

    const/4 v4, 0x1

    :goto_23
    const/4 v2, 0x7

    :goto_24
    :try_start_25
    invoke-virtual {v10, v2, v0}, Landroidx/profileinstaller/b;->b(ILjava/io/Serializable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    goto :goto_26

    :catch_10
    move-exception v0

    const/4 v4, 0x1

    :goto_25
    const/4 v2, 0x6

    goto :goto_24

    :goto_26
    const/4 v2, 0x0

    iput-object v2, v10, Landroidx/profileinstaller/b;->h:[B

    iput-object v2, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    :goto_27
    const/4 v5, 0x0

    :goto_28
    if-eqz v5, :cond_17

    invoke-static {v12, v13}, Landroidx/profileinstaller/i;->d(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    :cond_17
    :goto_29
    if-eqz v5, :cond_18

    if-eqz p3, :cond_18

    move v11, v4

    goto :goto_2a

    :cond_18
    const/4 v11, 0x0

    :goto_2a
    invoke-static {v1, v11}, Landroidx/profileinstaller/l;->a(Landroid/content/Context;Z)V

    return-void

    :goto_2b
    const/4 v1, 0x0

    iput-object v1, v10, Landroidx/profileinstaller/b;->h:[B

    iput-object v1, v10, Landroidx/profileinstaller/b;->g:[Landroidx/profileinstaller/c;

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_11
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x7

    invoke-interface {v8, v3, v2}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/profileinstaller/l;->a(Landroid/content/Context;Z)V

    return-void
.end method
