.class public final Lb6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lob/a;

.field public final c:Lob/a;

.field public final d:Lob/a;

.field public final e:Lob/a;

.field public final f:Lob/a;

.field public final g:Lob/a;

.field public final h:Lob/a;

.field public final i:Lob/a;

.field public final j:Lob/a;

.field public final k:Lob/a;

.field public final l:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;I)V
    .locals 0

    iput p12, p0, Lb6/b;->a:I

    iput-object p1, p0, Lb6/b;->b:Lob/a;

    iput-object p2, p0, Lb6/b;->c:Lob/a;

    iput-object p3, p0, Lb6/b;->d:Lob/a;

    iput-object p4, p0, Lb6/b;->e:Lob/a;

    iput-object p5, p0, Lb6/b;->f:Lob/a;

    iput-object p6, p0, Lb6/b;->g:Lob/a;

    iput-object p7, p0, Lb6/b;->h:Lob/a;

    iput-object p8, p0, Lb6/b;->i:Lob/a;

    iput-object p9, p0, Lb6/b;->j:Lob/a;

    iput-object p10, p0, Lb6/b;->k:Lob/a;

    iput-object p11, p0, Lb6/b;->l:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lb6/b;->a:I

    iget-object v2, v0, Lb6/b;->l:Lob/a;

    iget-object v3, v0, Lb6/b;->k:Lob/a;

    iget-object v4, v0, Lb6/b;->j:Lob/a;

    iget-object v5, v0, Lb6/b;->i:Lob/a;

    iget-object v6, v0, Lb6/b;->h:Lob/a;

    iget-object v7, v0, Lb6/b;->g:Lob/a;

    iget-object v8, v0, Lb6/b;->f:Lob/a;

    iget-object v9, v0, Lb6/b;->e:Lob/a;

    iget-object v10, v0, Lb6/b;->d:Lob/a;

    iget-object v11, v0, Lb6/b;->c:Lob/a;

    iget-object v0, v0, Lb6/b;->b:Lob/a;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lb6/c;

    invoke-interface {v11}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lb6/i;

    invoke-interface {v10}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lb6/e;

    invoke-interface {v9}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lb6/g;

    invoke-interface {v8}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lb6/h;

    invoke-interface {v7}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lb6/f;

    invoke-interface {v6}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lb6/j;

    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lb6/k;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lz5/e;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lb6/d;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lb6/a;

    new-instance v0, La6/a;

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, La6/a;-><init>(Lb6/c;Lb6/i;Lb6/e;Lb6/g;Lb6/h;Lb6/f;Lb6/j;Lb6/k;Lz5/e;Lb6/d;Lb6/a;)V

    return-object v0

    :goto_0
    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Le6/b;

    invoke-interface {v11}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Le6/k;

    invoke-interface {v10}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Le6/g;

    invoke-interface {v9}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Le6/i;

    invoke-interface {v8}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Le6/j;

    invoke-interface {v7}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Le6/h;

    invoke-interface {v6}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Le6/l;

    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Le6/m;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lc6/d;

    invoke-interface {v3}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Le6/c;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Le6/a;

    new-instance v0, Ld6/a;

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Ld6/a;-><init>(Le6/b;Le6/k;Le6/g;Le6/i;Le6/j;Le6/h;Le6/l;Le6/m;Lc6/d;Le6/c;Le6/a;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
