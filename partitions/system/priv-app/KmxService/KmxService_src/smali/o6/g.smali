.class public final Lo6/g;
.super Lo6/b;
.source "SourceFile"


# instance fields
.field public final d:Lo7/b;

.field public final e:Lo6/a;


# direct methods
.method public constructor <init>(Lo6/a;Lo7/b;)V
    .locals 0

    invoke-direct {p0}, Lo6/b;-><init>()V

    iput-object p2, p0, Lo6/g;->d:Lo7/b;

    iput-object p1, p0, Lo6/g;->e:Lo6/a;

    return-void
.end method


# virtual methods
.method public final g()Lo6/d;
    .locals 0

    iget-object p0, p0, Lo6/g;->e:Lo6/a;

    return-object p0
.end method
