.class public final Lo6/c;
.super Lo6/b;
.source "SourceFile"


# instance fields
.field public final d:Ll7/b;

.field public final e:I

.field public final f:Lo6/d;


# direct methods
.method public constructor <init>(Ll7/b;ILo6/d;)V
    .locals 0

    invoke-direct {p0}, Lo6/b;-><init>()V

    iput-object p1, p0, Lo6/c;->d:Ll7/b;

    iput p2, p0, Lo6/c;->e:I

    iput-object p3, p0, Lo6/c;->f:Lo6/d;

    return-void
.end method


# virtual methods
.method public final g()Lo6/d;
    .locals 0

    iget-object p0, p0, Lo6/c;->f:Lo6/d;

    return-object p0
.end method
