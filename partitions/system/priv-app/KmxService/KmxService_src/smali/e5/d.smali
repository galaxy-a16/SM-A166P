.class public final Le5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/a;


# static fields
.field public static final e:Le5/a;

.field public static final f:Le5/b;

.field public static final g:Le5/b;

.field public static final h:Le5/c;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Le5/a;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le5/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le5/a;-><init>(I)V

    sput-object v0, Le5/d;->e:Le5/a;

    new-instance v0, Le5/b;

    invoke-direct {v0, v1}, Le5/b;-><init>(I)V

    sput-object v0, Le5/d;->f:Le5/b;

    new-instance v0, Le5/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le5/b;-><init>(I)V

    sput-object v0, Le5/d;->g:Le5/b;

    new-instance v0, Le5/c;

    invoke-direct {v0}, Le5/c;-><init>()V

    sput-object v0, Le5/d;->h:Le5/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le5/d;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le5/d;->b:Ljava/util/HashMap;

    sget-object v2, Le5/d;->e:Le5/a;

    iput-object v2, p0, Le5/d;->c:Le5/a;

    const/4 v2, 0x0

    iput-boolean v2, p0, Le5/d;->d:Z

    sget-object p0, Le5/d;->f:Le5/b;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Le5/d;->g:Le5/b;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Ljava/util/Date;

    sget-object v2, Le5/d;->h:Le5/c;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lc5/c;)Ld5/a;
    .locals 1

    iget-object v0, p0, Le5/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Le5/d;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
