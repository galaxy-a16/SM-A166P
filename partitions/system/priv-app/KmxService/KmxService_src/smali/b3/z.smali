.class public final Lb3/z;
.super Lp3/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e;
.implements Lcom/google/android/gms/common/api/f;


# static fields
.field public static final j:Le3/b;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Le3/b;

.field public final f:Ljava/util/Set;

.field public final g:Lc3/f;

.field public h:Lo3/c;

.field public i:Lb3/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo3/b;->a:Le3/b;

    sput-object v0, Lb3/z;->j:Le3/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ll3/c;Lc3/f;)V
    .locals 0

    invoke-direct {p0}, Lp3/c;-><init>()V

    iput-object p1, p0, Lb3/z;->c:Landroid/content/Context;

    iput-object p2, p0, Lb3/z;->d:Landroid/os/Handler;

    iput-object p3, p0, Lb3/z;->g:Lc3/f;

    iget-object p1, p3, Lc3/f;->b:Ljava/util/Set;

    iput-object p1, p0, Lb3/z;->f:Ljava/util/Set;

    sget-object p1, Lb3/z;->j:Le3/b;

    iput-object p1, p0, Lb3/z;->e:Le3/b;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p0, p0, Lb3/z;->h:Lo3/c;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/b;->disconnect()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lb3/z;->h:Lo3/c;

    invoke-interface {v0, p0}, Lo3/c;->b(Lp3/e;)V

    return-void
.end method

.method public final d(La3/b;)V
    .locals 0

    iget-object p0, p0, Lb3/z;->i:Lb3/r;

    invoke-virtual {p0, p1}, Lb3/r;->c(La3/b;)V

    return-void
.end method
