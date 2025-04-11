.class public abstract Lv5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.slf4j.Logger"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lv5/b;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lv5/a;
    .locals 1

    sget-boolean v0, Lv5/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lv5/c;

    invoke-direct {v0, p0}, Lv5/c;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    sget-object p0, Le9/a;->g:Le9/a;

    return-object p0
.end method
