.class final Lkotlin/io/FilesKt__UtilsKt$copyRecursively$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/c;"
    }
.end annotation


# instance fields
.field final synthetic $onError:Lvb/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb/c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/FilesKt__UtilsKt$copyRecursively$2;->$onError:Lvb/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/FilesKt__UtilsKt$copyRecursively$2;->invoke(Ljava/io/File;Ljava/io/IOException;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Ljava/io/File;Ljava/io/IOException;)V
    .locals 1

    .line 2
    const-string v0, "f"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/io/FilesKt__UtilsKt$copyRecursively$2;->$onError:Lvb/c;

    invoke-interface {p0, p1, p2}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    if-eq p0, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkotlin/io/TerminateException;

    invoke-direct {p0, p1}, Lkotlin/io/TerminateException;-><init>(Ljava/io/File;)V

    throw p0
.end method
