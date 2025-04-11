.class public final Lo2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lob/a;

.field public b:Lcom/google/android/datatransport/runtime/dagger/internal/c;

.field public c:Lob/a;

.field public d:Lp2/e;

.field public e:Lob/a;

.field public f:Lob/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lkotlin/reflect/x;->e:Lcom/google/gson/internal/d;

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Lcom/google/android/datatransport/runtime/dagger/internal/b;)Lob/a;

    move-result-object v2

    iput-object v2, v0, Lo2/k;->a:Lob/a;

    new-instance v2, Lcom/google/android/datatransport/runtime/dagger/internal/c;

    if-eqz v1, :cond_0

    invoke-direct {v2, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/c;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lo2/k;->b:Lcom/google/android/datatransport/runtime/dagger/internal/c;

    sget-object v1, Lfc/k;->m:Lcom/google/gson/internal/d;

    sget-object v10, Lg2/m;->h:Lcom/google/gson/internal/d;

    new-instance v3, Lp2/e;

    const/4 v11, 0x0

    invoke-direct {v3, v2, v1, v10, v11}, Lp2/e;-><init>(Lob/a;Lcom/google/gson/internal/d;Lcom/google/gson/internal/d;I)V

    new-instance v4, Lp2/g;

    invoke-direct {v4, v2, v3}, Lp2/g;-><init>(Lcom/google/android/datatransport/runtime/dagger/internal/c;Lp2/e;)V

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Lcom/google/android/datatransport/runtime/dagger/internal/b;)Lob/a;

    move-result-object v2

    iput-object v2, v0, Lo2/k;->c:Lob/a;

    iget-object v2, v0, Lo2/k;->b:Lcom/google/android/datatransport/runtime/dagger/internal/c;

    sget-object v3, Li4/f;->f:Lcom/google/gson/internal/d;

    sget-object v4, Li4/g;->e:Lcom/google/gson/internal/d;

    new-instance v5, Lp2/e;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v3, v4, v6}, Lp2/e;-><init>(Lob/a;Lcom/google/gson/internal/d;Lcom/google/gson/internal/d;I)V

    iput-object v5, v0, Lo2/k;->d:Lp2/e;

    new-instance v3, Lr2/e;

    invoke-direct {v3, v2, v6}, Lr2/e;-><init>(Lob/a;I)V

    invoke-static {v3}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Lcom/google/android/datatransport/runtime/dagger/internal/b;)Lob/a;

    move-result-object v8

    sget-object v6, Lj3/f;->p:Lcom/google/gson/internal/d;

    iget-object v7, v0, Lo2/k;->d:Lp2/e;

    new-instance v2, Lo2/s;

    const/4 v9, 0x2

    move-object v3, v2

    move-object v4, v1

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lo2/s;-><init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;Lob/a;I)V

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Lcom/google/android/datatransport/runtime/dagger/internal/b;)Lob/a;

    move-result-object v2

    iput-object v2, v0, Lo2/k;->e:Lob/a;

    new-instance v6, Lr2/e;

    invoke-direct {v6, v1, v11}, Lr2/e;-><init>(Lob/a;I)V

    iget-object v9, v0, Lo2/k;->b:Lcom/google/android/datatransport/runtime/dagger/internal/c;

    new-instance v11, Lr2/f;

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, v9

    move-object v5, v2

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lr2/f;-><init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;I)V

    iget-object v3, v0, Lo2/k;->a:Lob/a;

    iget-object v4, v0, Lo2/k;->c:Lob/a;

    new-instance v6, Lo2/s;

    const/16 v18, 0x1

    move-object v12, v6

    move-object v13, v3

    move-object v14, v4

    move-object v15, v11

    move-object/from16 v16, v2

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Lo2/s;-><init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;Lob/a;I)V

    new-instance v7, Ls2/j;

    move-object v12, v7

    move-object v13, v9

    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Ls2/j;-><init>(Lob/a;Lob/a;Lob/a;Lr2/f;Lob/a;Lob/a;Lob/a;)V

    new-instance v8, Lr2/f;

    const/16 v17, 0x1

    move-object v12, v8

    move-object v13, v3

    move-object v14, v2

    move-object v15, v11

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v17}, Lr2/f;-><init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;I)V

    new-instance v2, Lo2/s;

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v1

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lo2/s;-><init>(Lob/a;Lob/a;Lcom/google/android/datatransport/runtime/dagger/internal/b;Lob/a;Lob/a;I)V

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Lcom/google/android/datatransport/runtime/dagger/internal/b;)Lob/a;

    move-result-object v1

    iput-object v1, v0, Lo2/k;->f:Lob/a;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lo2/k;->e:Lob/a;

    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt2/d;

    check-cast p0, Lt2/k;

    invoke-virtual {p0}, Lt2/k;->close()V

    return-void
.end method

.method public final bridge synthetic close()V
    .locals 0

    invoke-virtual {p0}, Lo2/k;->a()V

    return-void
.end method
