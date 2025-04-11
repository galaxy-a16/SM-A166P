.class public final Lec/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lkc/g;

.field public d:Lkc/f;

.field public e:Lec/j;

.field public final f:Ll4/e;

.field public g:I

.field public final h:Z

.field public final i:Lbc/f;


# direct methods
.method public constructor <init>(Lbc/f;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lec/h;->h:Z

    iput-object p1, p0, Lec/h;->i:Lbc/f;

    sget-object p1, Lec/j;->a:Lec/i;

    iput-object p1, p0, Lec/h;->e:Lec/j;

    sget-object p1, Lec/d0;->d0:Ll4/e;

    iput-object p1, p0, Lec/h;->f:Ll4/e;

    return-void
.end method
