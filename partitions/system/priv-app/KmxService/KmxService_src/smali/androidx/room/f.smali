.class public final Landroidx/room/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:La1/e;

.field public final d:Landroidx/room/z;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Landroidx/room/RoomDatabase$JournalMode;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Landroid/content/Intent;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;La1/e;Landroidx/room/z;Ljava/util/ArrayList;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrationContainer"

    invoke-static {p4, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "journalMode"

    invoke-static {p7, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeConverters"

    invoke-static {p13, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoMigrationSpecs"

    invoke-static {p14, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/f;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/f;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/f;->c:La1/e;

    iput-object p4, p0, Landroidx/room/f;->d:Landroidx/room/z;

    iput-object p5, p0, Landroidx/room/f;->e:Ljava/util/List;

    iput-boolean p6, p0, Landroidx/room/f;->f:Z

    iput-object p7, p0, Landroidx/room/f;->g:Landroidx/room/RoomDatabase$JournalMode;

    iput-object p8, p0, Landroidx/room/f;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Landroidx/room/f;->i:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/f;->j:Landroid/content/Intent;

    iput-boolean p10, p0, Landroidx/room/f;->k:Z

    iput-boolean p11, p0, Landroidx/room/f;->l:Z

    iput-object p12, p0, Landroidx/room/f;->m:Ljava/util/Set;

    iput-object p13, p0, Landroidx/room/f;->n:Ljava/util/List;

    iput-object p14, p0, Landroidx/room/f;->o:Ljava/util/List;

    return-void
.end method
