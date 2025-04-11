.class public final Lj1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Ll1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILj1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/e;->a:Landroid/content/Context;

    iput p2, p0, Lj1/e;->b:I

    iget-object p1, p3, Lj1/j;->e:Landroidx/work/impl/d0;

    iget-object p1, p1, Landroidx/work/impl/d0;->y:Lcom/google/firebase/messaging/r;

    new-instance p2, Ll1/c;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Ll1/c;-><init>(Lcom/google/firebase/messaging/r;Ll1/b;)V

    iput-object p2, p0, Lj1/e;->c:Ll1/c;

    return-void
.end method
