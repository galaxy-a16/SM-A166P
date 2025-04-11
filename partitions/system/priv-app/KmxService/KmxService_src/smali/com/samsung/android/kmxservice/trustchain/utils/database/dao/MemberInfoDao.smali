.class public interface abstract Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearTable()V
.end method

.method public abstract deleteMember(Ljava/lang/String;)V
.end method

.method public abstract getAllMemberInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMemberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V
.end method
