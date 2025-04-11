.class public final Lb0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lb0/a;->a:Z

    iput p2, p0, Lb0/a;->b:I

    iput-object p1, p0, Lb0/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb0/a;->a:Z

    iput p2, p0, Lb0/a;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb0/a;->c:Ljava/lang/Object;

    return-void
.end method
