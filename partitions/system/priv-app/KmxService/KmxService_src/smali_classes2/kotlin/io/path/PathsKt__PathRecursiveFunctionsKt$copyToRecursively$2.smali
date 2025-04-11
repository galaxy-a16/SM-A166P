.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/d;"
    }
.end annotation


# instance fields
.field final synthetic $followLinks:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;->$followLinks:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/io/path/a;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;->invoke(Lkotlin/io/path/a;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/io/path/a;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .locals 7

    const-string v0, "$this$copyToRecursively"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "src"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dst"

    invoke-static {p3, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlin/io/path/e;->a:[Ljava/nio/file/LinkOption;

    iget-boolean p0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;->$followLinks:Z

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lkotlin/io/path/e;->b:[Ljava/nio/file/LinkOption;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/io/path/e;->a:[Ljava/nio/file/LinkOption;

    :goto_0
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/nio/file/LinkOption;

    .line 3
    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {p3, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_8

    :cond_1
    if-eqz v0, :cond_6

    .line 4
    new-instance v0, Landroidx/activity/result/l;

    invoke-direct {v0, v2}, Landroidx/activity/result/l;-><init>(I)V

    invoke-interface {p3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_3

    :try_start_1
    instance-of v5, v4, Ljava/nio/file/SecureDirectoryStream;

    if-eqz v5, :cond_2

    .line 5
    iput-object v1, v0, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    .line 6
    move-object v1, v4

    check-cast v1, Ljava/nio/file/SecureDirectoryStream;

    invoke-interface {p3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    const-string v6, "this.fileName"

    invoke-static {v5, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v0}, Ll9/b;->h0(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Landroidx/activity/result/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    invoke-static {v4, v3}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v4, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    move v2, p1

    :goto_3
    if-eqz v2, :cond_4

    invoke-static {p3, v0}, Ll9/b;->j0(Ljava/nio/file/Path;Landroidx/activity/result/l;)V

    .line 7
    :cond_4
    iget-object v0, v0, Landroidx/activity/result/l;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_6

    new-instance p0, Ljava/nio/file/FileSystemException;

    const-string p1, "Failed to delete one or more files. See suppressed exceptions for details."

    invoke-direct {p0, p1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    invoke-static {p0, p2}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw p0

    .line 9
    :cond_6
    new-instance p1, Lt6/a;

    invoke-direct {p1}, Lt6/a;-><init>()V

    .line 10
    array-length v0, p0

    iget-object p1, p1, Lt6/a;->b:Ljava/lang/Object;

    if-lez v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    :cond_7
    sget-object p0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 12
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 14
    new-array p0, p0, [Ljava/nio/file/CopyOption;

    .line 15
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 16
    check-cast p0, [Ljava/nio/file/CopyOption;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/file/CopyOption;

    invoke-static {p2, p3, p0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "copy(this, target, *options)"

    invoke-static {p0, p1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    sget-object p0, Lkotlin/io/path/CopyActionResult;->CONTINUE:Lkotlin/io/path/CopyActionResult;

    return-object p0
.end method
