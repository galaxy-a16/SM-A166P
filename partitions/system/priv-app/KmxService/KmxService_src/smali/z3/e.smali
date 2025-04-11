.class public final Lz3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ll4/a;


# instance fields
.field public final a:Ll4/c;

.field public final b:Ll4/c;

.field public final c:Ll4/c;

.field public final d:Ll4/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll4/a;-><init>(F)V

    sput-object v0, Lz3/e;->e:Ll4/a;

    return-void
.end method

.method public constructor <init>(Ll4/c;Ll4/c;Ll4/c;Ll4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/e;->a:Ll4/c;

    iput-object p3, p0, Lz3/e;->b:Ll4/c;

    iput-object p4, p0, Lz3/e;->c:Ll4/c;

    iput-object p2, p0, Lz3/e;->d:Ll4/c;

    return-void
.end method
