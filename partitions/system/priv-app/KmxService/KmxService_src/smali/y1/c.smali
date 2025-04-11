.class public Ly1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/c;

    invoke-direct {v0}, Ly1/c;-><init>()V

    sput-object v0, Ly1/c;->a:Ly1/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b()Ly1/c;
    .locals 0

    return-object p0
.end method

.method public c()Ly1/c;
    .locals 0

    return-object p0
.end method

.method public d(I)Ly1/c;
    .locals 0

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ly1/c;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ly1/c;->a:Ly1/c;

    if-ne p0, v0, :cond_0

    const-string p0, "TokenFilter.INCLUDE_ALL"

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
